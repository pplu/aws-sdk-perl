
package Paws::Chime::ListMeetings;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMeetings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meetings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::ListMeetingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListMeetings - Arguments for method ListMeetings on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMeetings on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method ListMeetings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMeetings.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $ListMeetingsResponse = $chime->ListMeetings(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Meetings  = $ListMeetingsResponse->Meetings;
    my $NextToken = $ListMeetingsResponse->NextToken;

    # Returns a L<Paws::Chime::ListMeetingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/ListMeetings>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token to use to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMeetings in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

