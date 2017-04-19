
package Paws::ApiGateway::ApiKey;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has CustomerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerId');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enabled');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has StageKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'stageKeys');
  has Value => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'value');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ApiKey

=head1 ATTRIBUTES


=head2 CreatedDate => Str

The timestamp when the API Key was created.


=head2 CustomerId => Str

An AWS Marketplace customer identifier , when integrating with the AWS
SaaS Marketplace.


=head2 Description => Str

The description of the API Key.


=head2 Enabled => Bool

Specifies whether the API Key can be used by callers.


=head2 Id => Str

The identifier of the API Key.


=head2 LastUpdatedDate => Str

The timestamp when the API Key was last updated.


=head2 Name => Str

The name of the API Key.


=head2 StageKeys => ArrayRef[Str|Undef]

A list of Stage resources that are associated with the ApiKey resource.


=head2 Value => Str

The value of the API Key.


=head2 _request_id => Str


=cut

