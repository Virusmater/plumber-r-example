#* Plot plot_new histogram
#* @png
#* @param bin_count:int Bin count
#* @get /plot
function(bin_count) {
  
  # Histogram of the Old Faithful Geyser Data ----
  # with requested number of bins
  # This expression that generates a histogram is wrapped in a call
  # to renderPlot to indicate that:
  #
  # 1. It is "reactive" and therefore should be automatically
  #    re-executed when inputs (input$bins) change
  # 2. Its output type is a plot

    
  x    <- faithful$waiting
  bins <- seq(min(x), max(x), length.out = as.integer(bin_count) + 1)
  
  hist(x, breaks = bins, col = "#75AADB", border = "white",
       xlab = "Waiting time to next eruption (in mins)",
       main = "Histogram of waiting times")

  
}
