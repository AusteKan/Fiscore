% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hydrophobicity_plot.R
\name{hydrophobicity_plot}
\alias{hydrophobicity_plot}
\title{hydrophobicity_plot}
\usage{
hydrophobicity_plot(pdb_df, window = 3, weight = 100, model = "exponential")
}
\arguments{
\item{pdb_df}{Requires a pdb data frame generated by PDB_prepare}

\item{window}{Size of a window between 3 and 21, default is 21}

\item{weight}{Relative weight of the window edges compared to the window center in percent; default=100}

\item{model}{Weight variation model either "linear" or "exponential", if the relative weight at the edges is selected to be < 100 percent; default="linear"}
}
\value{
Scaled line graph
}
\description{
Function to plot amino acid sequence hydrophobicity profile using Kyte-Doolittle hydrophobicity scale; Reference= J. Mol. Biol. 157=105-132;1982. The Kyte-Doolittle scale is used for detecting hydrophobic regions in proteins. Regions with a positive value are hydrophobic ans those with negative values are hydrophylic. This scale can be used to identify both surface-exposed regions as well as transmembrane regions, depending on the window size used.
}
\examples{
path_to_processed_PDB<- system.file("extdata", "pdb_df.tabular", package="Fiscore")
# basic usage of hydrophobicity_plot
pdb_df<-read.table(path_to_processed_PDB)
hydrophobicity_plot(pdb_df)
}
