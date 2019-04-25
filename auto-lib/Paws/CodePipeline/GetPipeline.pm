
package Paws::CodePipeline::GetPipeline;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Version => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'version' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::GetPipelineOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetPipeline - Arguments for method GetPipeline on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPipeline on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method GetPipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPipeline.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $GetPipelineOutput = $codepipeline->GetPipeline(
      Name    => 'MyPipelineName',
      Version => 1,                  # OPTIONAL
    );

    # Results:
    my $Metadata = $GetPipelineOutput->Metadata;
    my $Pipeline = $GetPipelineOutput->Pipeline;

    # Returns a L<Paws::CodePipeline::GetPipelineOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/GetPipeline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the pipeline for which you want to get information.
Pipeline names must be unique under an Amazon Web Services (AWS) user
account.



=head2 Version => Int

The version number of the pipeline. If you do not specify a version,
defaults to the most current version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPipeline in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

