package Paws::GuardDuty::Finding;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Confidence => (is => 'ro', isa => 'Num', request_name => 'confidence', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Partition => (is => 'ro', isa => 'Str', request_name => 'partition', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);
  has Resource => (is => 'ro', isa => 'Paws::GuardDuty::Resource', request_name => 'resource', traits => ['NameInRequest']);
  has SchemaVersion => (is => 'ro', isa => 'Str', request_name => 'schemaVersion', traits => ['NameInRequest']);
  has Service => (is => 'ro', isa => 'Paws::GuardDuty::Service', request_name => 'service', traits => ['NameInRequest']);
  has Severity => (is => 'ro', isa => 'Num', request_name => 'severity', traits => ['NameInRequest']);
  has Title => (is => 'ro', isa => 'Str', request_name => 'title', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Finding

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Finding object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Finding object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Representation of a abnormal or suspicious activity.

=head1 ATTRIBUTES


=head2 AccountId => Str

  AWS account ID where the activity occurred that prompted GuardDuty to
generate a finding.


=head2 Arn => Str

  The ARN of a finding described by the action.


=head2 Confidence => Num

  The confidence level of a finding.


=head2 CreatedAt => Str

  The time stamp at which a finding was generated.


=head2 Description => Str

  The description of a finding.


=head2 Id => Str

  The identifier that corresponds to a finding described by the action.


=head2 Partition => Str

  The AWS resource partition.


=head2 Region => Str

  The AWS region where the activity occurred that prompted GuardDuty to
generate a finding.


=head2 Resource => L<Paws::GuardDuty::Resource>

  The AWS resource associated with the activity that prompted GuardDuty
to generate a finding.


=head2 SchemaVersion => Str

  Findings' schema version.


=head2 Service => L<Paws::GuardDuty::Service>

  Additional information assigned to the generated finding by GuardDuty.


=head2 Severity => Num

  The severity of a finding.


=head2 Title => Str

  The title of a finding.


=head2 Type => Str

  The type of a finding described by the action.


=head2 UpdatedAt => Str

  The time stamp at which a finding was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

