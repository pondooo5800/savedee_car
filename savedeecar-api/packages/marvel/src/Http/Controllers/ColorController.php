<?php

namespace Marvel\Http\Controllers;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Marvel\Database\Models\Color;
use Marvel\Database\Repositories\ColorRepository;
use Marvel\Exceptions\MarvelException;
use Marvel\Http\Requests\TypeRequest;
use Prettus\Validator\Exceptions\ValidatorException;

class ColorController extends CoreController
{
    public $repository;

    public function __construct(ColorRepository $repository)
    {
        $this->repository = $repository;
    }


    /**
     * Display a listing of the resource.
     *
     * @param Request $request
     * @return Collection|Color[]
     */
    public function index(Request $request)
    {
        $limit = isset($request->limit) ? $request->limit : 10000;
        return $this->repository->paginate($limit);
    }
}
