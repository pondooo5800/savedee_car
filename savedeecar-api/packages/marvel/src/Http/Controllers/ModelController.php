<?php

namespace Marvel\Http\Controllers;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Marvel\Database\Models\Models;
use Marvel\Database\Repositories\ModelRepository;
use Marvel\Exceptions\MarvelException;
use Marvel\Http\Requests\TypeRequest;
use Prettus\Validator\Exceptions\ValidatorException;

class ModelController extends CoreController
{
    public $repository;

    public function __construct(ModelRepository $repository)
    {
        $this->repository = $repository;
    }


    /**
     * Display a listing of the resource.
     *
     * @param Request $request
     * @return Collection|Models[]
     */
    public function index(Request $request)
    {
        $language = $request->language ?? DEFAULT_LANGUAGE;
        $limit = isset($request->limit) ? $request->limit : 10000;
        return $this->repository->where('language', $language)->paginate($limit);
    }
}
