
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rlstats

<!-- badges: start -->

<!-- badges: end -->

## Installation

You can install the development version of rlstats from
[GitHub](https://github.com/) with:

``` r
#install.packages("remotes")
#install.packages("devtools")
devtools::install_github("ADC-405-S26/rlstats")
```

**Note: If you’re reading this on the Github source code page, there
will be a lot of css jargon that it displays. Scroll past to see the
table output.**

## Examples

This package contains three main functions. Two for analyzing a specific
player, and one for comparison between teams in a match. Below you’ll
see usage of all three.

``` r
library(rlstats)
```

#### stats_for_player

This function outputs a table with some basic summary statistics for a
specified player

``` r
stats_for_player(TDMZ443games, name = "TDMZ443")
```

<div id="bvwekdyalb" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#bvwekdyalb table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#bvwekdyalb thead, #bvwekdyalb tbody, #bvwekdyalb tfoot, #bvwekdyalb tr, #bvwekdyalb td, #bvwekdyalb th {
  border-style: none;
}
&#10;#bvwekdyalb p {
  margin: 0;
  padding: 0;
}
&#10;#bvwekdyalb .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#bvwekdyalb .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#bvwekdyalb .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#bvwekdyalb .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#bvwekdyalb .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#bvwekdyalb .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#bvwekdyalb .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#bvwekdyalb .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#bvwekdyalb .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#bvwekdyalb .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#bvwekdyalb .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#bvwekdyalb .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#bvwekdyalb .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#bvwekdyalb .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#bvwekdyalb .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#bvwekdyalb .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#bvwekdyalb .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#bvwekdyalb .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#bvwekdyalb .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#bvwekdyalb .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#bvwekdyalb .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#bvwekdyalb .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#bvwekdyalb .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#bvwekdyalb .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#bvwekdyalb .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#bvwekdyalb .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#bvwekdyalb .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#bvwekdyalb .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#bvwekdyalb .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#bvwekdyalb .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#bvwekdyalb .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#bvwekdyalb .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#bvwekdyalb .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#bvwekdyalb .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#bvwekdyalb .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#bvwekdyalb .gt_left {
  text-align: left;
}
&#10;#bvwekdyalb .gt_center {
  text-align: center;
}
&#10;#bvwekdyalb .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#bvwekdyalb .gt_font_normal {
  font-weight: normal;
}
&#10;#bvwekdyalb .gt_font_bold {
  font-weight: bold;
}
&#10;#bvwekdyalb .gt_font_italic {
  font-style: italic;
}
&#10;#bvwekdyalb .gt_super {
  font-size: 65%;
}
&#10;#bvwekdyalb .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#bvwekdyalb .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#bvwekdyalb .gt_indent_1 {
  text-indent: 5px;
}
&#10;#bvwekdyalb .gt_indent_2 {
  text-indent: 10px;
}
&#10;#bvwekdyalb .gt_indent_3 {
  text-indent: 15px;
}
&#10;#bvwekdyalb .gt_indent_4 {
  text-indent: 20px;
}
&#10;#bvwekdyalb .gt_indent_5 {
  text-indent: 25px;
}
&#10;#bvwekdyalb .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#bvwekdyalb div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="6" class="gt_heading gt_title gt_font_normal gt_bottom_border" style>Stats for TDMZ443</td>
    </tr>
    &#10;    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Number_of_Ball_Touches">Number_of_Ball_Touches</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Number_Of_Goals">Number_Of_Goals</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Number_Of_Saves">Number_Of_Saves</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Average_Speed">Average_Speed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Average_Boost">Average_Boost</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Percentage_Of_Time_Supersonic">Percentage_Of_Time_Supersonic</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Number_of_Ball_Touches" class="gt_row gt_right">68</td>
<td headers="Number_Of_Goals" class="gt_row gt_right">1</td>
<td headers="Number_Of_Saves" class="gt_row gt_right">4</td>
<td headers="Average_Speed" class="gt_row gt_right">51.66</td>
<td headers="Average_Boost" class="gt_row gt_right">54.81</td>
<td headers="Percentage_Of_Time_Supersonic" class="gt_row gt_right">16.8%</td></tr>
  </tbody>
  &#10;</table>
</div>

If your dataset contains data from several games, the above function
call will return aggregated statistics for all those games. If you want
to specify a particular game, you pass in its match guid.

``` r
stats_for_player(TDMZ443games, name = "TDMZ443", game = '8DF7C4C211F1560E0ED84EA271D83282')
```

<div id="cthxqauxky" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#cthxqauxky table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#cthxqauxky thead, #cthxqauxky tbody, #cthxqauxky tfoot, #cthxqauxky tr, #cthxqauxky td, #cthxqauxky th {
  border-style: none;
}
&#10;#cthxqauxky p {
  margin: 0;
  padding: 0;
}
&#10;#cthxqauxky .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#cthxqauxky .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#cthxqauxky .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#cthxqauxky .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#cthxqauxky .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#cthxqauxky .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#cthxqauxky .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#cthxqauxky .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#cthxqauxky .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#cthxqauxky .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#cthxqauxky .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#cthxqauxky .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#cthxqauxky .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#cthxqauxky .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#cthxqauxky .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#cthxqauxky .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#cthxqauxky .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#cthxqauxky .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#cthxqauxky .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#cthxqauxky .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#cthxqauxky .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#cthxqauxky .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#cthxqauxky .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#cthxqauxky .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#cthxqauxky .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#cthxqauxky .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#cthxqauxky .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#cthxqauxky .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#cthxqauxky .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#cthxqauxky .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#cthxqauxky .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#cthxqauxky .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#cthxqauxky .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#cthxqauxky .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#cthxqauxky .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#cthxqauxky .gt_left {
  text-align: left;
}
&#10;#cthxqauxky .gt_center {
  text-align: center;
}
&#10;#cthxqauxky .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#cthxqauxky .gt_font_normal {
  font-weight: normal;
}
&#10;#cthxqauxky .gt_font_bold {
  font-weight: bold;
}
&#10;#cthxqauxky .gt_font_italic {
  font-style: italic;
}
&#10;#cthxqauxky .gt_super {
  font-size: 65%;
}
&#10;#cthxqauxky .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#cthxqauxky .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#cthxqauxky .gt_indent_1 {
  text-indent: 5px;
}
&#10;#cthxqauxky .gt_indent_2 {
  text-indent: 10px;
}
&#10;#cthxqauxky .gt_indent_3 {
  text-indent: 15px;
}
&#10;#cthxqauxky .gt_indent_4 {
  text-indent: 20px;
}
&#10;#cthxqauxky .gt_indent_5 {
  text-indent: 25px;
}
&#10;#cthxqauxky .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#cthxqauxky div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="6" class="gt_heading gt_title gt_font_normal gt_bottom_border" style>Stats for TDMZ443</td>
    </tr>
    &#10;    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Number_of_Ball_Touches">Number_of_Ball_Touches</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Number_Of_Goals">Number_Of_Goals</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Number_Of_Saves">Number_Of_Saves</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Average_Speed">Average_Speed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Average_Boost">Average_Boost</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Percentage_Of_Time_Supersonic">Percentage_Of_Time_Supersonic</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Number_of_Ball_Touches" class="gt_row gt_right">45</td>
<td headers="Number_Of_Goals" class="gt_row gt_right">1</td>
<td headers="Number_Of_Saves" class="gt_row gt_right">2</td>
<td headers="Average_Speed" class="gt_row gt_right">52.52</td>
<td headers="Average_Boost" class="gt_row gt_right">54.62</td>
<td headers="Percentage_Of_Time_Supersonic" class="gt_row gt_right">17.6%</td></tr>
  </tbody>
  &#10;</table>
</div>

#### speed_boost_plots

This function returns two plots displaying boost total and speed
information for a specified player throughout the course of a specified
game

``` r
speed_boost_plots(TDMZ443games, name = 'TDMZ443', game = '8DF7C4C211F1560E0ED84EA271D83282')
```

<img src="man/figures/README-unnamed-chunk-4-1.png" alt="" width="100%" />

#### compare_teams

This functions outputs a table with some summary statistics allowing
comparison between the performance of both teams in specified match

``` r
compare_teams(TDMZ443games, '8DF7C4C211F1560E0ED84EA271D83282')
```

<div id="yhuxcrzvrn" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#yhuxcrzvrn table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#yhuxcrzvrn thead, #yhuxcrzvrn tbody, #yhuxcrzvrn tfoot, #yhuxcrzvrn tr, #yhuxcrzvrn td, #yhuxcrzvrn th {
  border-style: none;
}
&#10;#yhuxcrzvrn p {
  margin: 0;
  padding: 0;
}
&#10;#yhuxcrzvrn .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#yhuxcrzvrn .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#yhuxcrzvrn .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#yhuxcrzvrn .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#yhuxcrzvrn .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#yhuxcrzvrn .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#yhuxcrzvrn .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#yhuxcrzvrn .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#yhuxcrzvrn .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#yhuxcrzvrn .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#yhuxcrzvrn .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#yhuxcrzvrn .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#yhuxcrzvrn .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#yhuxcrzvrn .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#yhuxcrzvrn .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#yhuxcrzvrn .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#yhuxcrzvrn .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#yhuxcrzvrn .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#yhuxcrzvrn .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#yhuxcrzvrn .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#yhuxcrzvrn .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#yhuxcrzvrn .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#yhuxcrzvrn .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#yhuxcrzvrn .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#yhuxcrzvrn .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#yhuxcrzvrn .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#yhuxcrzvrn .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#yhuxcrzvrn .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#yhuxcrzvrn .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#yhuxcrzvrn .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#yhuxcrzvrn .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#yhuxcrzvrn .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#yhuxcrzvrn .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#yhuxcrzvrn .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#yhuxcrzvrn .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#yhuxcrzvrn .gt_left {
  text-align: left;
}
&#10;#yhuxcrzvrn .gt_center {
  text-align: center;
}
&#10;#yhuxcrzvrn .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#yhuxcrzvrn .gt_font_normal {
  font-weight: normal;
}
&#10;#yhuxcrzvrn .gt_font_bold {
  font-weight: bold;
}
&#10;#yhuxcrzvrn .gt_font_italic {
  font-style: italic;
}
&#10;#yhuxcrzvrn .gt_super {
  font-size: 65%;
}
&#10;#yhuxcrzvrn .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#yhuxcrzvrn .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#yhuxcrzvrn .gt_indent_1 {
  text-indent: 5px;
}
&#10;#yhuxcrzvrn .gt_indent_2 {
  text-indent: 10px;
}
&#10;#yhuxcrzvrn .gt_indent_3 {
  text-indent: 15px;
}
&#10;#yhuxcrzvrn .gt_indent_4 {
  text-indent: 20px;
}
&#10;#yhuxcrzvrn .gt_indent_5 {
  text-indent: 25px;
}
&#10;#yhuxcrzvrn .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#yhuxcrzvrn div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="8" class="gt_heading gt_title gt_font_normal gt_bottom_border" style>Stats for teams</td>
    </tr>
    &#10;    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="TeamNum">TeamNum</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Number_Of_Goals">Number_Of_Goals</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Number_of_Ball_Touches">Number_of_Ball_Touches</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Number_Of_Shots">Number_Of_Shots</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Number_Of_Saves">Number_Of_Saves</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Number_Of_Assists">Number_Of_Assists</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Number_Of_Car_Touches">Number_Of_Car_Touches</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Number_Of_Demos">Number_Of_Demos</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="TeamNum" class="gt_row gt_right">0</td>
<td headers="Number_Of_Goals" class="gt_row gt_right">3</td>
<td headers="Number_of_Ball_Touches" class="gt_row gt_right">124</td>
<td headers="Number_Of_Shots" class="gt_row gt_right">10</td>
<td headers="Number_Of_Saves" class="gt_row gt_right">4</td>
<td headers="Number_Of_Assists" class="gt_row gt_right">3</td>
<td headers="Number_Of_Car_Touches" class="gt_row gt_right">270</td>
<td headers="Number_Of_Demos" class="gt_row gt_right">1</td></tr>
    <tr><td headers="TeamNum" class="gt_row gt_right">1</td>
<td headers="Number_Of_Goals" class="gt_row gt_right">1</td>
<td headers="Number_of_Ball_Touches" class="gt_row gt_right">106</td>
<td headers="Number_Of_Shots" class="gt_row gt_right">6</td>
<td headers="Number_Of_Saves" class="gt_row gt_right">5</td>
<td headers="Number_Of_Assists" class="gt_row gt_right">1</td>
<td headers="Number_Of_Car_Touches" class="gt_row gt_right">298</td>
<td headers="Number_Of_Demos" class="gt_row gt_right">3</td></tr>
  </tbody>
  &#10;</table>
</div>
