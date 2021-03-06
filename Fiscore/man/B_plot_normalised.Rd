% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/B_plot_normalised.R
\name{B_plot_normalised}
\alias{B_plot_normalised}
\title{B_plot_normalised}
\usage{
B_plot_normalised(pdb_df)
}
\arguments{
\item{pdb_df}{Requires a PDB data frame generated by PDB_prepare}
}
\value{
bar plot
}
\description{
Function to plot B-factor normalised values per amino acid using a bar plot; NOTE: some PDB files have breakages in their amino acid sequence, that is some residues might be missing and the gaps will be reflected in the plot
}
\examples{
path_to_processed_PDB<- system.file("extdata", "pdb_df.tabular", package="Fiscore")
# basic usage of B_plot_normalised
pdb_df<-read.table(path_to_processed_PDB)
B_plot_normalised(pdb_df)
}
