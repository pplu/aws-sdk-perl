
package Paws::DataPipeline::CreatePipeline;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has UniqueId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uniqueId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::CreatePipelineOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::CreatePipeline - Arguments for method CreatePipeline on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePipeline on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method CreatePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePipeline.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    my $CreatePipelineOutput = $datapipeline->CreatePipeline(
      Name        => 'Myid',
      UniqueId    => 'Myid',
      Description => 'Mystring',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MytagKey',      # min: 1, max: 128
          Value => 'MytagValue',    # max: 256

        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $PipelineId = $CreatePipelineOutput->PipelineId;

    # Returns a L<Paws::DataPipeline::CreatePipelineOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/CreatePipeline>

=head1 ATTRIBUTES


=head2 Description => Str

The description for the pipeline.



=head2 B<REQUIRED> Name => Str

The name for the pipeline. You can use the same name for multiple
pipelines associated with your AWS account, because AWS Data Pipeline
assigns each pipeline a unique pipeline identifier.



=head2 Tags => ArrayRef[L<Paws::DataPipeline::Tag>]

A list of tags to associate with the pipeline at creation. Tags let you
control access to pipelines. For more information, see Controlling User
Access to Pipelines
(http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html)
in the I<AWS Data Pipeline Developer Guide>.



=head2 B<REQUIRED> UniqueId => Str

A unique identifier. This identifier is not the same as the pipeline
identifier assigned by AWS Data Pipeline. You are responsible for
defining the format and ensuring the uniqueness of this identifier. You
use this parameter to ensure idempotency during repeated calls to
C<CreatePipeline>. For example, if the first call to C<CreatePipeline>
does not succeed, you can pass in the same unique identifier and
pipeline name combination on a subsequent call to C<CreatePipeline>.
C<CreatePipeline> ensures that if a pipeline already exists with the
same name and unique identifier, a new pipeline is not created.
Instead, you'll receive the pipeline identifier from the previous
attempt. The uniqueness of the name and unique identifier combination
is scoped to the AWS account or IAM user credentials.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePipeline in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

