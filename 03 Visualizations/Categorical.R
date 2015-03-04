
categoricals <- eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from MBS"'),
                httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', 
                USER='C##cs329e_ry2634', PASS='orcl_ry2634', MODE='native_mode', MODEL='model', 
                returnFor = 'R', returnDimensions = 'True'), verbose = TRUE), 1, 2^31-1)))

l <- list()
for (i in names(MBSALLDF)) { 
  if (i %in% categoricals[[1]]) {
    r <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select \\\""i"\\\", count(*) n from MBS group by \\\""i"\\\" "'),
         httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL',
         USER='C##cs329e_ry2634',PASS='orcl_ry2634',MODE='native_mode',MODEL='model',
         returnDimensions = 'False',returnFor = 'JSON', i=i),verbose = TRUE)))
    x_name = names(r)[1]
    y_name = 'Count'
    names(r) = c('x','y')
    p <- ggplot(r, aes(x=x, y=y)) + geom_point() + labs(x=x_name, y=y_name)
    
    print(p) 
    l[[i]] <- p
  }
}

png("../00 Doc/categoricals.png", width = 25, height = 10, units = "in", res = 72)
grid.newpage()
pushViewport(viewport(layout = grid.layout(1, 12)))   

print(l[[1]], vp = viewport(layout.pos.row = 1, layout.pos.col = 1:4))
print(l[[2]], vp = viewport(layout.pos.row = 1, layout.pos.col = 5:8))
print(l[[3]], vp = viewport(layout.pos.row = 1, layout.pos.col = 9:12))

dev.off()


l <- list()
for (i in names(MBSALLDF)) { 

  if (i %in% categoricals[[2]]) {
    r <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select \\\""i"\\\" from MBS where \\\""i"\\\" is not null "'),
         httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL',
         USER='C##cs329e_ry2634',PASS='orcl_ry2634',MODE='native_mode',MODEL='model',
         returnDimensions = 'False',returnFor = 'JSON', i=i),verbose = TRUE)))
    x_name = names(r)[1]
    y_name = 'Count'
    names(r) = c('x')
    binwidthvar = (max(r[1])-min(r[1])) / 100
    p <- ggplot(r, aes(x=x)) + geom_histogram(binwidth =binwidthvar)+ labs(x=x_name, y=y_name)
    print(p) 
    l[[i]] <- p
  }
}

png("../00 Doc/categoricals2.png", width = 40, height = 20, units = "in", res = 72)
grid.newpage()
pushViewport(viewport(layout = grid.layout(2, 28)))   

print(l[[1]], vp = viewport(layout.pos.row = 1, layout.pos.col = 1:7))
print(l[[2]], vp = viewport(layout.pos.row = 1, layout.pos.col = 8:14))
print(l[[3]], vp = viewport(layout.pos.row = 1, layout.pos.col = 15:21))
print(l[[4]], vp = viewport(layout.pos.row = 1, layout.pos.col = 22:28))
print(l[[5]], vp = viewport(layout.pos.row = 2, layout.pos.col = 1:7))
print(l[[6]], vp = viewport(layout.pos.row = 2, layout.pos.col = 8:14))
print(l[[7]], vp = viewport(layout.pos.row = 2, layout.pos.col = 15:21))

dev.off()
