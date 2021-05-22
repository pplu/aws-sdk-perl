
package Paws::AccessAnalyzer::CancelPolicyGeneration;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelPolicyGeneration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policy/generation/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::CancelPolicyGenerationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::CancelPolicyGeneration - Arguments for method CancelPolicyGeneration on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelPolicyGeneration on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method CancelPolicyGeneration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelPolicyGeneration.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $CancelPolicyGenerationResponse =
      $access -analyzer->CancelPolicyGeneration(
      JobId => 'MyJobId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/CancelPolicyGeneration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The C<JobId> that is returned by the C<StartPolicyGeneration>
operation. The C<JobId> can be used with C<GetGeneratedPolicy> to
retrieve the generated policies or used with C<CancelPolicyGeneration>
to cancel the policy generation request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelPolicyGeneration in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

