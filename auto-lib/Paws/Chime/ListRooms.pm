
package Paws::Chime::ListRooms;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has MemberId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'member-id');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRooms');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{accountId}/rooms');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::ListRoomsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListRooms - Arguments for method ListRooms on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRooms on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method ListRooms.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRooms.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $ListRoomsResponse = $chime->ListRooms(
      AccountId  => 'MyNonEmptyString',
      MaxResults => 1,                    # OPTIONAL
      MemberId   => 'MyString',           # OPTIONAL
      NextToken  => 'MyString',           # OPTIONAL
    );

    # Results:
    my $NextToken = $ListRoomsResponse->NextToken;
    my $Rooms     = $ListRoomsResponse->Rooms;

    # Returns a L<Paws::Chime::ListRoomsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/ListRooms>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 MemberId => Str

The member ID (user ID or bot ID).



=head2 NextToken => Str

The token to use to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRooms in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

