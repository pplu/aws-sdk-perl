
package Paws::WellArchitected::ListShareInvitations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has WorkloadNamePrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'WorkloadNamePrefix');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListShareInvitations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/shareInvitations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::ListShareInvitationsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListShareInvitations - Arguments for method ListShareInvitations on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListShareInvitations on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method ListShareInvitations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListShareInvitations.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $ListShareInvitationsOutput = $wellarchitected->ListShareInvitations(
      MaxResults         => 1,                         # OPTIONAL
      NextToken          => 'MyNextToken',             # OPTIONAL
      WorkloadNamePrefix => 'MyWorkloadNamePrefix',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListShareInvitationsOutput->NextToken;
    my $ShareInvitationSummaries =
      $ListShareInvitationsOutput->ShareInvitationSummaries;

    # Returns a L<Paws::WellArchitected::ListShareInvitationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/ListShareInvitations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return for this request.



=head2 NextToken => Str





=head2 WorkloadNamePrefix => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListShareInvitations in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

