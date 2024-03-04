@extends('admin.adminlayout')

@section('content')


<div class="card">
    <div class="card-header">
        <h4>Add Product <i class="material-icons opacity-10">post_add</i></h4>
    </div>
    <div class="card-body">
        <form action="/insert-product" method="post" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Category Name</label>
                    <select class="form-select" aria-label="Default select example" name='category_id' >
                        <option selected value="">select a Category</option>

                        @foreach ($category as $cat)
                        <option value="{{$cat->id}}">{{$cat->name}}</option>
                        @endforeach
                       
                    </select>
                    @error('category_id')
                        <div class="text-danger">{{$message}}</div>
                    @enderror
                </div>
                <div class="col-md-6 mb-3">
                   <div>
                    <label for="" class="form-label">Available Size <small class="text-warning">(except couple section)</small></label>
                   </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" name="size[]" value="XS">
                        <label class="form-check-label" >XS</label>
                      </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" name="size[]" value="S">
                        <label class="form-check-label" >S</label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" name="size[]" value="M">
                        <label class="form-check-label">M</label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" name="size[]" value="L" >
                        <label class="form-check-label" >L</label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" name="size[]" value="XL" >
                        <label class="form-check-label" >XL</label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" name="size[]" value="XXL" >
                        <label class="form-check-label" >XXL</label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" name="size[]" value="3XL" >
                        <label class="form-check-label" >3XL</label>
                      </div>

                      @if ($errors->has('size'))
                          <div class="text-danger">{{$errors->first('size')}}</div>
                      @endif
                </div>
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Name</label>
                    <input type="text" class="form-control" value="{{old('name')}}" required name="name" >
                </div>
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Slug name</label>
                    <input type="text" class="form-control" value="{{old('slug')}}" required name="slug" >
                </div>
                <div class="col-md-12 mb-3">
                    <label for="" class="form-label">Description</label>
                    <input type="text" class="form-control" value="{{old('desc')}}" required name="desc" >
                </div>
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Original Price</label>
                    <input type="number" class='form-control'  value="{{old('original_p')}}" required name="original_p">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Selling Price</label>
                    <input type="number" class='form-control' value="{{old('selling_p')}}" required name="selling_p">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Image</label>
                    <input type="file" class="form-control" name="images[]" multiple required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Colors</label>
                    <input type="text" class="form-control" name="colors">
                </div>
               
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Quantity</label>
                    <input type="number" class="form-control" value="{{old('quantity')}}" name="quantity" required>
                </div>
                <div class="col-md-6 mb-3">
                    <div>
                     <label for="" class="form-label">Couple's Men Size <small class="text-warning">(only for couple section)</small></label>
                    </div>
                     <div class="form-check form-check-inline">
                         <input class="form-check-input" type="checkbox" name="men_size[]" value="XS">
                         <label class="form-check-label" >XS</label>
                       </div>
                     <div class="form-check form-check-inline">
                         <input class="form-check-input" type="checkbox" name="men_size[]" value="S">
                         <label class="form-check-label" >S</label>
                       </div>
                       <div class="form-check form-check-inline">
                         <input class="form-check-input" type="checkbox" name="men_size[]" value="M">
                         <label class="form-check-label">M</label>
                       </div>
                       <div class="form-check form-check-inline">
                         <input class="form-check-input" type="checkbox" name="men_size[]" value="L" >
                         <label class="form-check-label" >L</label>
                       </div>
                       <div class="form-check form-check-inline">
                         <input class="form-check-input" type="checkbox" name="men_size[]" value="XL" >
                         <label class="form-check-label" >XL</label>
                       </div>
                       <div class="form-check form-check-inline">
                         <input class="form-check-input" type="checkbox" name="men_size[]" value="XXL" >
                         <label class="form-check-label" >XXL</label>
                       </div>
                       <div class="form-check form-check-inline">
                         <input class="form-check-input" type="checkbox" name="men_size[]" value="3XL" >
                         <label class="form-check-label" >3XL</label>
                       </div>
 
                   
                 </div>
                 <div class="col-md-6 mb-3">
                    <div>
                     <label for="" class="form-label">Couple's Women Size <small class="text-warning">(only for couple section)</small></label>
                    </div>
                     <div class="form-check form-check-inline">
                         <input class="form-check-input" type="checkbox" name="women_size[]" value="XS">
                         <label class="form-check-label" >XS</label>
                       </div>
                     <div class="form-check form-check-inline">
                         <input class="form-check-input" type="checkbox" name="women_size[]" value="S">
                         <label class="form-check-label" >S</label>
                       </div>
                       <div class="form-check form-check-inline">
                         <input class="form-check-input" type="checkbox" name="women_size[]" value="M">
                         <label class="form-check-label">M</label>
                       </div>
                       <div class="form-check form-check-inline">
                         <input class="form-check-input" type="checkbox" name="women_size[]" value="L" >
                         <label class="form-check-label" >L</label>
                       </div>
                       <div class="form-check form-check-inline">
                         <input class="form-check-input" type="checkbox" name="women_size[]" value="XL" >
                         <label class="form-check-label" >XL</label>
                       </div>
                       <div class="form-check form-check-inline">
                         <input class="form-check-input" type="checkbox" name="women_size[]" value="XXL" >
                         <label class="form-check-label" >XXL</label>
                       </div>
                       <div class="form-check form-check-inline">
                         <input class="form-check-input" type="checkbox" name="women_size[]" value="3XL" >
                         <label class="form-check-label" >3XL</label>
                       </div>
 
                     
                 </div>
                 <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Offer Message</label>
                    <input type="text" class="form-control" name="offer_msg"  placeholder="ex:(sale..,new..,offer..,trend...)">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="" class="form-label">Product Type</label>
                    <select class="form-select"  name='product_type' required>
                        <option selected value="">Choose a product style</option>
                        <option value="Unisex">Unisex</option>
                        <option value="Mens">Mens</option>
                        <option value="Womens">Womens</option>
                        <option value="Kids">Kids</option>
                      </select>
                </div>
                <div class="col-md-12 mb-3">
                    <div>
                        <label for="" class="form-label">Action</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox"  name="status">
                        <label class="form-check-label" >popular</label>
                      </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox"  name="trending">
                        <label class="form-check-label" >Trending</label>
                      </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox"  name="offer_menu">
                        <label class="form-check-label" >Offer Menu</label>
                      </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox"  name="freq_bought">
                        <label class="form-check-label" >Frequent Bought</label>
                      </div>
                  
          
                </div>
                
               

                <div class="col-md-12 mb-3  mt-3">
                    <button class="btn btn-primary  w-50 d-block mx-auto" type="submit">Submit</button>
                </div>

            </div>
        </form>
    </div>
</div>
    
@endsection