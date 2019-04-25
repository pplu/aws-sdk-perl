
package Paws::DataPipeline::SetStatus;
  use Moose;
  has ObjectIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'objectIds' , required => 1);
  has PipelineId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineId' , required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::SetStatus - Arguments for method SetStatus on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetStatus on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method SetStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetStatus.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    $datapipeline->SetStatus(
      ObjectIds => [
        'Myid', ...    # min: 1, max: 1024
      ],
      PipelineId => 'Myid',
      Status     => 'Mystring',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/SetStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ObjectIds => ArrayRef[Str|Undef]

The IDs of the objects. The corresponding objects can be either
physical or components, but not a mix of both types.



=head2 B<REQUIRED> PipelineId => Str

The ID of the pipeline that contains the objects.



=head2 B<REQUIRED> Status => Str

The status to be set on all the objects specified in C<objectIds>. For
components, use C<PAUSE> or C<RESUME>. For instances, use
C<TRY_CANCEL>, C<RERUN>, or C<MARK_FINISHED>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetStatus in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

