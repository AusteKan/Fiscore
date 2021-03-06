#' @title phi_psi_interactive
#'
#' @description Function plots a scatter plot with  a secondary structure element visualisation based on the PDB file data; NOTE: NA refers to unidentified region, e.g., a disordered region
#'
#' @param pdb_df Requires a PDB data frame generated by PDB_prepare
#' @return Interactive plot
#' @ImportFrom ggplot2 aes
#' @ImportFrom ggplot2 ggplot
#' @ImportFrom ggplot2 geom_point
#' @ImportFrom ggplot2 scale_x_continuous
#' @ImportFrom ggplot2 scale_y_continuous
#' @ImportFrom ggplot2 labs
#' @ImportFrom ggplot2 ggtitle
#' @ImportFrom plotly  ggplotly
#' @export
#' @examples
#' path_to_processed_PDB<- system.file("extdata", "pdb_df.tabular", package="Fiscore")
#' # basic usage of phi_psi_interactive
#' pdb_df<-read.table(path_to_processed_PDB)
#' phi_psi_interactive(pdb_df)
phi_psi_interactive<-function(pdb_df){

  #to avoid namespace conflucts
  phi_val<-pdb_df$"phi"
  psi_val<-pdb_df$"psi"
  Type_val<-pdb_df$"Type"

  plot_angles<-ggplot2::ggplot(data=pdb_df)+ggplot2::geom_point(ggplot2::aes(x=phi_val, y = psi_val, color=Type_val))+ggplot2::scale_x_continuous(breaks=c(-180,-120,-60,0,60,120,180),limits = c(-180, 180), expand = c(0,0)) +ggplot2::scale_y_continuous(breaks=c(-180,-120,-60,0,60,120,180),limits = c(-180,180), expand = c(0,0))+ggplot2::labs(x="phi",y="psi")

  plotly::ggplotly(plot_angles)



}
