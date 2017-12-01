<%@page contentType="text/html" pageEncoding="UTF-8"%>

      <div class="row">

        <div class="col-lg-12">
          <div class="white-bg">

            <div class="search-box">
              <form action="" method="post" class="hotel-search-form" onsubmit="return false">
                <div class="form-inner">

                  <div class="row">

                    <div class="form-group col-lg-3">
                      <select class="form-control">
                        <option value="">Para onde? </option>
                        <option value="1">Palhoça</option>
                        <option value="2">SÃ£o José</option>
                        <option value="3">Antônio Carlos</option>
                        <option value="4">Santo Amaro da Imperatriz</option>
                      </select>
                    </div>

                    <div class="form-group col-lg-2">
                      <div class='input-group date' id='datetimepicker1'>
                        <input type='text' class="form-control" placeholder="Data Chegada" />
                        <span class="input-group-addon">
                          <span class="fa fa-calendar"></span>
                        </span>
                      </div>
                    </div>

                    <div class="form-group col-lg-2">
                      <div class='input-group date' id='datetimepicker2'>
                        <input type='text' class="form-control" placeholder="Data Saída" />
                        <span class="input-group-addon">
                          <span class="fa fa-calendar"></span>
                        </span>
                      </div>
                    </div>

                    <div class="form-group col-lg-3 margin-bottom-0">
                      <select class="form-control">
                        <option value="">Quantidade de pessoas</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                      </select>
                    </div>

                    <div class="form-group col-lg-2">
                      <button type="submit" name="submit" class="yellow-btn" onclick="validarFormBusca()">Buscar</button>
                    </div>

                  </div>

                </div>

              </form>
            </div>
          </div>

        </div>

      </div>
