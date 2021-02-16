<template>
  <div class="col-lg-6 mb-3">
    <!-- begin::form 2-->
    <form action="">
      <!-- start card  Horizontal Form Layout-->
      <div class="card ul-card__margin-25">
        <div class="card-header bg-transparent">
          <h3 class="card-title">Add Book</h3>
        </div>
        <div class="card-body">
          <div class="form-group row">
            <label
              class="action-bar-horizontal-label col-lg-4 col-form-label"
              for="staticEmail"
              >Name:</label
            >
            <div class="col-lg-6 mb-4">
              <input
                class="form-control"
                id="staticEmail"
                type="text"
                placeholder="book's name"
              /><small class="ul-form__text form-text" id="passwordHelpBlock"
                >Enter book's name</small
              >
            </div>
            <label
              class="action-bar-horizontal-label col-lg-4 col-form-label"
              for="staticEmail"
              >Author:
            </label>
            <div class="col-lg-6 mb-4">
              <input
                class="form-control"
                id="staticEmail"
                type="text"
                placeholder="book's author"
              /><small class="ul-form__text form-text" id="passwordHelpBlock"
                >Enter author of the book</small
              >
            </div>
            <label
              class="action-bar-horizontal-label col-lg-4 col-form-label"
              for="staticEmail"
              >Publisher:
            </label>
            <div class="col-lg-6 mb-4">
              <input
                class="form-control"
                id="staticEmail"
                type="text"
                placeholder="book's publisher"
              /><small class="ul-form__text form-text" id="passwordHelpBlock"
                >Enter publisher of the book</small
              >
            </div>
            <label
              class="action-bar-horizontal-label col-lg-4 col-form-label"
              for="staticEmail"
              >Total Pages:
            </label>
            <div class="col-lg-6 mb-4">
              <input
                class="form-control"
                id="staticEmail"
                type="text"
                placeholder="number of pages"
              /><small class="ul-form__text form-text" id="passwordHelpBlock"
                >Enter number of pages</small
              >
            </div>
          </div>
          <div class="form-group row mt-4">
            <label
              class="action-bar-horizontal-label col-lg-4 col-form-label"
              for="staticEmail"
              >Genre:</label
            >
            <div class="col-lg-6 d-inline-flex align-self-center">
              <label class="checkbox checkbox-primary mr-2">
                <input type="checkbox" checked="" /><span>Drama</span
                ><span class="checkmark"></span>
              </label>
              <label class="checkbox checkbox-primary mr-2">
                <input type="checkbox" /><span>Romantic</span
                ><span class="checkmark"></span>
              </label>
              <label class="checkbox checkbox-primary mr-2">
                <input type="checkbox" /><span>Novel</span
                ><span class="checkmark"></span>
              </label>
              <label class="checkbox checkbox-primary mr-2">
                <input type="checkbox" /><span>Thriller</span
                ><span class="checkmark"></span>
              </label>
            </div>
          </div>
        </div>
        <div class="card-footer">
          <div class="mc-footer">
            <div class="row text-right">
              <div class="col-lg-4"></div>
              <div class="col-lg-6 text-left">
                <button class="btn btn-primary m-1" type="button">Save</button>
                <button class="btn btn-outline-secondary m-1" type="button">
                  Cancel
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- end card  Horizontal Form Layout-->
    </form>
    <!-- end::form 2-->
  </div>
</template>

<script>
</script>