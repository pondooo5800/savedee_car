<?php

namespace Marvel\Http\Controllers;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Marvel\Database\Models\Caryear;
use Marvel\Database\Repositories\CaryearRepository;
use Marvel\Exceptions\MarvelException;
use Marvel\Http\Requests\TypeRequest;
use Prettus\Validator\Exceptions\ValidatorException;

class CaryearController extends CoreController
{
    public $repository;

    public function __construct(CaryearRepository $repository)
    {
        $this->repository = $repository;
    }


    /**
     * Display a listing of the resource.
     *
     * @param Request $request
     * @return Collection|Caryear[]
     */
    public function index(Request $request)
    {
        $limit = isset($request->limit) ? $request->limit : 10000;
        return $this->repository->paginate($limit);
    }
}
