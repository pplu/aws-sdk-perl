package Paws::AccessAnalyzer::FindingSummary;
  use Moose;
  has Action => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'action', traits => ['NameInRequest']);
  has AnalyzedAt => (is => 'ro', isa => 'Str', request_name => 'analyzedAt', traits => ['NameInRequest'], required => 1);
  has Condition => (is => 'ro', isa => 'Paws::AccessAnalyzer::ConditionKeyMap', request_name => 'condition', traits => ['NameInRequest'], required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest'], required => 1);
  has Error => (is => 'ro', isa => 'Str', request_name => 'error', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has IsPublic => (is => 'ro', isa => 'Bool', request_name => 'isPublic', traits => ['NameInRequest']);
  has Principal => (is => 'ro', isa => 'Paws::AccessAnalyzer::PrincipalMap', request_name => 'principal', traits => ['NameInRequest']);
  has Resource => (is => 'ro', isa => 'Str', request_name => 'resource', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::FindingSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AccessAnalyzer::FindingSummary object:

  $service_obj->Method(Att1 => { Action => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AccessAnalyzer::FindingSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Contains information about a finding.

=head1 ATTRIBUTES


=head2 Action => ArrayRef[Str|Undef]

  The action in the analyzed policy statement that an external principal
has permission to use.


=head2 B<REQUIRED> AnalyzedAt => Str

  The time at which the resource-based policy that generated the finding
was analyzed.


=head2 B<REQUIRED> Condition => L<Paws::AccessAnalyzer::ConditionKeyMap>

  The condition in the analyzed policy statement that resulted in a
finding.


=head2 B<REQUIRED> CreatedAt => Str

  The time at which the finding was created.


=head2 Error => Str

  The error that resulted in an Error finding.


=head2 B<REQUIRED> Id => Str

  The ID of the finding.


=head2 IsPublic => Bool

  Indicates whether the finding reports a resource that has a policy that
allows public access.


=head2 Principal => L<Paws::AccessAnalyzer::PrincipalMap>

  The external principal that has access to a resource within the zone of
trust.


=head2 Resource => Str

  The resource that the external principal has access to.


=head2 B<REQUIRED> ResourceType => Str

  The type of the resource that the external principal has access to.


=head2 B<REQUIRED> Status => Str

  The status of the finding.


=head2 B<REQUIRED> UpdatedAt => Str

  The time at which the finding was most recently updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

