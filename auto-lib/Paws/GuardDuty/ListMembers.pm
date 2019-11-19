
package Paws::GuardDuty::ListMembers;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::GuardDuty::Types qw//;
  has DetectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has OnlyAssociated => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListMembers');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/detector/{detectorId}/member');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GuardDuty::ListMembersResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DetectorId' => {
                                 'type' => 'Str'
                               },
               'OnlyAssociated' => {
                                     'type' => 'Str'
                                   },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'IsRequired' => {
                    'DetectorId' => 1
                  },
  'ParamInQuery' => {
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken',
                      'OnlyAssociated' => 'onlyAssociated'
                    },
  'ParamInURI' => {
                    'DetectorId' => 'detectorId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListMembers - Arguments for method ListMembers on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMembers on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method ListMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMembers.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $ListMembersResponse = $guardduty->ListMembers(
      DetectorId     => 'MyDetectorId',
      MaxResults     => 1,                # OPTIONAL
      NextToken      => 'MyString',       # OPTIONAL
      OnlyAssociated => 'MyString',       # OPTIONAL
    );

    # Results:
    my $Members   = $ListMembersResponse->Members;
    my $NextToken = $ListMembersResponse->NextToken;

    # Returns a L<Paws::GuardDuty::ListMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/ListMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector the member is associated with.



=head2 MaxResults => Int

You can use this parameter to indicate the maximum number of items you
want in the response. The default value is 50. The maximum value is 50.



=head2 NextToken => Str

You can use this parameter when paginating results. Set the value of
this parameter to null on your first call to the list action. For
subsequent calls to the action fill nextToken in the request with the
value of NextToken from the previous response to continue listing data.



=head2 OnlyAssociated => Str

Specifies whether to only return associated members or to return all
members (including members which haven't been invited yet or have been
disassociated).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMembers in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

