
package Paws::WellArchitected::ListWorkloads;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has WorkloadNamePrefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkloads');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workloadsSummaries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::ListWorkloadsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListWorkloads - Arguments for method ListWorkloads on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkloads on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method ListWorkloads.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkloads.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $ListWorkloadsOutput = $wellarchitected->ListWorkloads(
      MaxResults         => 1,                         # OPTIONAL
      NextToken          => 'MyNextToken',             # OPTIONAL
      WorkloadNamePrefix => 'MyWorkloadNamePrefix',    # OPTIONAL
    );

    # Results:
    my $NextToken         = $ListWorkloadsOutput->NextToken;
    my $WorkloadSummaries = $ListWorkloadsOutput->WorkloadSummaries;

    # Returns a L<Paws::WellArchitected::ListWorkloadsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/ListWorkloads>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return for this request.



=head2 NextToken => Str





=head2 WorkloadNamePrefix => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkloads in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

