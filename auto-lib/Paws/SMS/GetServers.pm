# Generated from json/callargs_class.tt

package Paws::SMS::GetServers;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::SMS::Types qw/SMS_VmServerAddress/;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has VmServerAddressList => (is => 'ro', isa => ArrayRef[SMS_VmServerAddress], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetServers');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SMS::GetServersResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VmServerAddressList' => {
                                          'class' => 'Paws::SMS::VmServerAddress',
                                          'type' => 'ArrayRef[SMS_VmServerAddress]'
                                        },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'VmServerAddressList' => 'vmServerAddressList',
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetServers - Arguments for method GetServers on L<Paws::SMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServers on the
L<AWS Server Migration Service|Paws::SMS> service. Use the attributes of this class
as arguments to method GetServers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServers.

=head1 SYNOPSIS

    my $sms = Paws->service('SMS');
    my $GetServersResponse = $sms->GetServers(
      MaxResults          => 1,                # OPTIONAL
      NextToken           => 'MyNextToken',    # OPTIONAL
      VmServerAddressList => [
        {
          VmId        => 'MyVmId',             # OPTIONAL
          VmManagerId => 'MyVmManagerId',      # OPTIONAL
        },
        ...
      ],                                       # OPTIONAL
    );

    # Results:
    my $LastModifiedOn      = $GetServersResponse->LastModifiedOn;
    my $NextToken           = $GetServersResponse->NextToken;
    my $ServerCatalogStatus = $GetServersResponse->ServerCatalogStatus;
    my $ServerList          = $GetServersResponse->ServerList;

    # Returns a L<Paws::SMS::GetServersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms/GetServers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call. The default
value is 50. To retrieve the remaining results, make another call with
the returned C<NextToken> value.



=head2 NextToken => Str

The token for the next set of results.



=head2 VmServerAddressList => ArrayRef[SMS_VmServerAddress]

List of C<VmServerAddress> objects




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServers in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

