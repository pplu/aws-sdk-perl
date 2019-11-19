
package Paws::SESv2::PutDedicatedIpInPool;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SESv2::Types qw//;
  has DestinationPoolName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Ip => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutDedicatedIpInPool');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/email/dedicated-ips/{IP}/pool');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SESv2::PutDedicatedIpInPoolResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DestinationPoolName' => 1,
                    'Ip' => 1
                  },
  'types' => {
               'Ip' => {
                         'type' => 'Str'
                       },
               'DestinationPoolName' => {
                                          'type' => 'Str'
                                        }
             },
  'ParamInURI' => {
                    'Ip' => 'IP'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PutDedicatedIpInPool - Arguments for method PutDedicatedIpInPool on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDedicatedIpInPool on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method PutDedicatedIpInPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDedicatedIpInPool.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $PutDedicatedIpInPoolResponse = $email->PutDedicatedIpInPool(
      DestinationPoolName => 'MyPoolName',
      Ip                  => 'MyIp',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutDedicatedIpInPool>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationPoolName => Str

The name of the IP pool that you want to add the dedicated IP address
to. You have to specify an IP pool that already exists.



=head2 B<REQUIRED> Ip => Str

The IP address that you want to move to the dedicated IP pool. The
value you specify has to be a dedicated IP address that's associated
with your AWS account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDedicatedIpInPool in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

