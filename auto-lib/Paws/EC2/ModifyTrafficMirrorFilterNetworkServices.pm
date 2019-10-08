
package Paws::EC2::ModifyTrafficMirrorFilterNetworkServices;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::EC2::Types qw//;
  has AddNetworkServices => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has RemoveNetworkServices => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has TrafficMirrorFilterId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ModifyTrafficMirrorFilterNetworkServices');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::ModifyTrafficMirrorFilterNetworkServicesResult');
  class_has _result_key => (isa => Str, is => 'ro');

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'TrafficMirrorFilterId' => {
                                            'type' => 'Str'
                                          },
               'AddNetworkServices' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       },
               'RemoveNetworkServices' => {
                                            'type' => 'ArrayRef[Str|Undef]'
                                          }
             },
  'NameInRequest' => {
                       'AddNetworkServices' => 'AddNetworkService',
                       'RemoveNetworkServices' => 'RemoveNetworkService'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyTrafficMirrorFilterNetworkServices - Arguments for method ModifyTrafficMirrorFilterNetworkServices on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyTrafficMirrorFilterNetworkServices on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyTrafficMirrorFilterNetworkServices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyTrafficMirrorFilterNetworkServices.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyTrafficMirrorFilterNetworkServicesResult =
      $ec2->ModifyTrafficMirrorFilterNetworkServices(
      TrafficMirrorFilterId => 'MyString',
      AddNetworkServices    => [
        'amazon-dns', ...    # values: amazon-dns
      ],                     # OPTIONAL
      DryRun                => 1,    # OPTIONAL
      RemoveNetworkServices => [
        'amazon-dns', ...            # values: amazon-dns
      ],                             # OPTIONAL
      );

    # Results:
    my $TrafficMirrorFilter =
      $ModifyTrafficMirrorFilterNetworkServicesResult->TrafficMirrorFilter;

# Returns a L<Paws::EC2::ModifyTrafficMirrorFilterNetworkServicesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyTrafficMirrorFilterNetworkServices>

=head1 ATTRIBUTES


=head2 AddNetworkServices => ArrayRef[Str|Undef]

The network service, for example Amazon DNS, that you want to mirror.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 RemoveNetworkServices => ArrayRef[Str|Undef]

The network service, for example Amazon DNS, that you no longer want to
mirror.



=head2 B<REQUIRED> TrafficMirrorFilterId => Str

The ID of the Traffic Mirror filter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyTrafficMirrorFilterNetworkServices in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

