# Generated from default/object.tt
package Paws::ManagedBlockchain::Network;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ManagedBlockchain::Types qw/ManagedBlockchain_NetworkFrameworkAttributes ManagedBlockchain_VotingPolicy/;
  has CreationDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Framework => (is => 'ro', isa => Str);
  has FrameworkAttributes => (is => 'ro', isa => ManagedBlockchain_NetworkFrameworkAttributes);
  has FrameworkVersion => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has VotingPolicy => (is => 'ro', isa => ManagedBlockchain_VotingPolicy);
  has VpcEndpointServiceName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'Name' => {
                           'type' => 'Str'
                         },
               'Status' => {
                             'type' => 'Str'
                           },
               'Framework' => {
                                'type' => 'Str'
                              },
               'FrameworkAttributes' => {
                                          'type' => 'ManagedBlockchain_NetworkFrameworkAttributes',
                                          'class' => 'Paws::ManagedBlockchain::NetworkFrameworkAttributes'
                                        },
               'VpcEndpointServiceName' => {
                                             'type' => 'Str'
                                           },
               'VotingPolicy' => {
                                   'class' => 'Paws::ManagedBlockchain::VotingPolicy',
                                   'type' => 'ManagedBlockchain_VotingPolicy'
                                 },
               'FrameworkVersion' => {
                                       'type' => 'Str'
                                     },
               'Description' => {
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

Paws::ManagedBlockchain::Network

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::Network object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., VpcEndpointServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::Network object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

Network configuration properties.

=head1 ATTRIBUTES


=head2 CreationDate => Str

  The date and time that the network was created.


=head2 Description => Str

  Attributes of the blockchain framework for the network.


=head2 Framework => Str

  The blockchain framework that the network uses.


=head2 FrameworkAttributes => ManagedBlockchain_NetworkFrameworkAttributes

  Attributes of the blockchain framework that the network uses.


=head2 FrameworkVersion => Str

  The version of the blockchain framework that the network uses.


=head2 Id => Str

  The unique identifier of the network.


=head2 Name => Str

  The name of the network.


=head2 Status => Str

  The current status of the network.


=head2 VotingPolicy => ManagedBlockchain_VotingPolicy

  The voting rules for the network to decide if a proposal is accepted.


=head2 VpcEndpointServiceName => Str

  The VPC endpoint service name of the VPC endpoint service of the
network. Members use the VPC endpoint service name to create a VPC
endpoint to access network resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

