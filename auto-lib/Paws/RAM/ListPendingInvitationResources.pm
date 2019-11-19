
package Paws::RAM::ListPendingInvitationResources;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::RAM::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ResourceShareInvitationArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListPendingInvitationResources');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/listpendinginvitationresources');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RAM::ListPendingInvitationResourcesResponse');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ResourceShareInvitationArn' => 'resourceShareInvitationArn',
                       'MaxResults' => 'maxResults',
                       'NextToken' => 'nextToken'
                     },
  'IsRequired' => {
                    'ResourceShareInvitationArn' => 1
                  },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'ResourceShareInvitationArn' => {
                                                 'type' => 'Str'
                                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListPendingInvitationResources - Arguments for method ListPendingInvitationResources on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPendingInvitationResources on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method ListPendingInvitationResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPendingInvitationResources.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $ListPendingInvitationResourcesResponse =
      $ram->ListPendingInvitationResources(
      ResourceShareInvitationArn => 'MyString',
      MaxResults                 => 1,             # OPTIONAL
      NextToken                  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListPendingInvitationResourcesResponse->NextToken;
    my $Resources = $ListPendingInvitationResourcesResponse->Resources;

    # Returns a L<Paws::RAM::ListPendingInvitationResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/ListPendingInvitationResources>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 B<REQUIRED> ResourceShareInvitationArn => Str

The Amazon Resource Name (ARN) of the invitation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPendingInvitationResources in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

