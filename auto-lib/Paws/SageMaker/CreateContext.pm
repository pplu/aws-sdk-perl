
package Paws::SageMaker::CreateContext;
  use Moose;
  has ContextName => (is => 'ro', isa => 'Str', required => 1);
  has ContextType => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'Paws::SageMaker::LineageEntityParameters');
  has Source => (is => 'ro', isa => 'Paws::SageMaker::ContextSource', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContext');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateContextResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateContext - Arguments for method CreateContext on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContext on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateContext.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContext.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateContextResponse = $api . sagemaker->CreateContext(
      ContextName => 'MyExperimentEntityName',
      ContextType => 'MyString256',
      Source      => {
        SourceUri  => 'MyString2048',    # max: 2048
        SourceId   => 'MyString256',     # max: 256
        SourceType => 'MyString256',     # max: 256
      },
      Description => 'MyExperimentDescription',    # OPTIONAL
      Properties  => {
        'MyStringParameterValue' =>
          'MyStringParameterValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ContextArn = $CreateContextResponse->ContextArn;

    # Returns a L<Paws::SageMaker::CreateContextResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateContext>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContextName => Str

The name of the context. Must be unique to your account in an AWS
Region.



=head2 B<REQUIRED> ContextType => Str

The context type.



=head2 Description => Str

The description of the context.



=head2 Properties => L<Paws::SageMaker::LineageEntityParameters>

A list of properties to add to the context.



=head2 B<REQUIRED> Source => L<Paws::SageMaker::ContextSource>

The source type, ID, and URI.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of tags to apply to the context.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContext in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

