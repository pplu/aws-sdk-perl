# Generated from json/callargs_class.tt

package Paws::Glue::CancelMLTaskRun;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has TaskRunId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TransformId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CancelMLTaskRun');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::CancelMLTaskRunResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskRunId' => {
                                'type' => 'Str'
                              },
               'TransformId' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'TransformId' => 1,
                    'TaskRunId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CancelMLTaskRun - Arguments for method CancelMLTaskRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelMLTaskRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CancelMLTaskRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelMLTaskRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CancelMLTaskRunResponse = $glue->CancelMLTaskRun(
      TaskRunId   => 'MyHashString',
      TransformId => 'MyHashString',

    );

    # Results:
    my $Status      = $CancelMLTaskRunResponse->Status;
    my $TaskRunId   = $CancelMLTaskRunResponse->TaskRunId;
    my $TransformId = $CancelMLTaskRunResponse->TransformId;

    # Returns a L<Paws::Glue::CancelMLTaskRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CancelMLTaskRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskRunId => Str

A unique identifier for the task run.



=head2 B<REQUIRED> TransformId => Str

The unique identifier of the machine learning transform.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelMLTaskRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

