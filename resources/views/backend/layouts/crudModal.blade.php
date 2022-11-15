
<!-- MODAL SECTION -->
<div class="modal hide modal-lg fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">Edit {{ $title }} </h4>
            <div class="btn-group" role="group" aria-label="Third group">
                <button type="button" class="close btn" data-bs-dismiss="modal">X</button>
            </div>
        </div>
        <div class="modal-body">
            <form id="frmProducts" name="frmProducts" class="form-horizontal" novalidat Qe="">
                 @foreach($dataCreate as $data)
                    <div class="mb-3 mt-3">
                    <label for="{{ $data['name'] }}" class="form-label">{{ $data['label'] }}</label>
                    @if($data["type"] == 'input')
                    <input type="text" class="form-control inputData @error($data['name']) is-invalid @enderror" id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}"  {{ $data['required'] ? 'required' : ' ' }}>
                    @elseif($data["type"] == 'number')
                    <input type="number" class="form-control inputData @error($data['name']) is-invalid @enderror" id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}"  {{ $data['required'] ? 'required' : ' ' }}>
                    @elseif($data["type"] == 'email')
                    <input type="email" class="form-control inputData @error($data['name']) is-invalid @enderror" id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}"  {{ $data['required'] ? 'required' : ' ' }}>
                    @elseif($data["type"] == 'textarea')
                    <textarea type="text" class="form-control inputData @error($data['name']) is-invalid @enderror " id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}" {{ $data['required'] ? 'required' : ' ' }}></textarea>
                    @elseif($data["type"] == 'select')
                        <select class="form-select inputData @error($data['name']) is-invalid @enderror" aria-label="Default select example" id="{{ $data['name'] }}" name="{{ $data['name'] }}" {{ $data['required'] ? 'required' : ' ' }}>
                            @foreach($data["children"] as $selectValue)
                                <option value="{{ $selectValue['id'] }}">{{ $selectValue['label'] }}</option>
                            @endforeach
                        </select>
                    @elseif($data["type"] == 'file')
                    <input type="file" class="form-control inputData @error($data['name']) is-invalid @enderror " id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}" {{ $data['required'] ? 'required' : ' ' }}></input>
                    @elseif($data["type"] == 'date')
                    <input type="date" class="form-control inputData @error($data['name']) is-invalid @enderror " id="{{ $data['name'] }}" name="{{ $data['name'] }}" value="{{ old($data['name']) }}" {{ $data['required'] ? 'required' : ' ' }}></input>
                    @endif
                    @error($data['name'])
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                    </div>
                 @endforeach
              </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" id="btn-save" value="update">Save Changes</button>
          <input type="hidden" id="product_id" name="product_id" value="0">
        </div>
      </div>
    </div>
</div>
<!-- END MODAL -->
