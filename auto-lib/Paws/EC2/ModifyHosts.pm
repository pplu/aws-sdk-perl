
package Paws::EC2::ModifyHosts;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EC2::Types qw//;
  has AutoPlacement => (is => 'ro', isa => Str, predicate => 1);
  has HostIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has HostRecovery => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ModifyHosts');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::ModifyHostsResult');
  class_has _result_key => (isa => Str, is => 'ro');

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'HostRecovery' => {
                                   'type' => 'Str'
                                 },
               'HostIds' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'AutoPlacement' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'HostIds' => 'hostId',
                       'AutoPlacement' => 'autoPlacement'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyHosts - Arguments for method ModifyHosts on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyHosts on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyHosts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyHosts.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyHostsResult = $ec2->ModifyHosts(
      HostIds       => [ 'MyString', ... ],
      AutoPlacement => 'on',                  # OPTIONAL
      HostRecovery  => 'on',                  # OPTIONAL
    );

    # Results:
    my $Successful   = $ModifyHostsResult->Successful;
    my $Unsuccessful = $ModifyHostsResult->Unsuccessful;

    # Returns a L<Paws::EC2::ModifyHostsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyHosts>

=head1 ATTRIBUTES


=head2 AutoPlacement => Str

Specify whether to enable or disable auto-placement.

Valid values are: C<"on">, C<"off">

=head2 B<REQUIRED> HostIds => ArrayRef[Str|Undef]

The IDs of the Dedicated Hosts to modify.



=head2 HostRecovery => Str

Indicates whether to enable or disable host recovery for the Dedicated
Host. For more information, see Host Recovery
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-recovery.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

Valid values are: C<"on">, C<"off">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyHosts in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

