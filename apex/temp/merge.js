// noinspection JSUnresolvedReference

function mergeColunaPorTexto(idGrid, tituloColuna) {
  const $grid = $('#' + idGrid + ' .t-Report-report');

  $grid.each(function () {
    const $report = $(this);
    let colunaIndex = null;
    let $ultimaCelula = null;
    let rowspan = 1;

    // Encontra índice da coluna pelo título
    $report.find('th').each(function (i) {
      if ($(this).text().trim() === tituloColuna) {
        colunaIndex = i + 1;
      }
    });

    if (!colunaIndex) return;

    $report.find('tr').each(function () {
      const $celula = $(this).find('td:nth-child(' + colunaIndex + ')');
      if ($celula.length === 0) return;

      if (!$ultimaCelula) {
        $ultimaCelula = $celula;
        rowspan = 1;
      } else if ($celula.text().trim() === $ultimaCelula.text().trim()) {
        $celula.remove();
        rowspan++;
        $ultimaCelula.attr('rowspan', rowspan);
      } else {
        $ultimaCelula = $celula;
        rowspan = 1;
      }
    });
  });
}

$(document).ready(function () {
  mergeColunaPorTexto('GridMerge', 'CPF');
  mergeColunaPorTexto('GridMerge', 'NR_PROCESSO');
});
