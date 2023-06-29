<?php

namespace Marvel\Http\Controllers;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Marvel\Database\Models\Gear;
use Marvel\Database\Repositories\GearRepository;
use Marvel\Exceptions\MarvelException;
use Marvel\Http\Requests\TypeRequest;
use Prettus\Validator\Exceptions\ValidatorException;

class GearController extends CoreController
{
    public $repository;

    public function __construct(GearRepository $repository)
    {
        $this->repository = $repository;
    }


    /**
     * Display a listing of the resource.
     *
     * @param Request $request
     * @return Collection|Gear[]
     */
    public function index(Request $request)
    {
        $limit = isset($request->limit) ? $request->limit : 10000;
        return $this->repository->paginate($limit);
    }
}
