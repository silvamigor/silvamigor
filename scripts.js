function closeDetail(el) {
    el.open = false;  // mais legível
    el.scrollIntoView({ block: "nearest", behavior: "smooth" });
    history.replaceState(null, '', '#' + el.id);  // altera só o hash sem recarregar
}
