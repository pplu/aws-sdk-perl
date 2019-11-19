# Generated from default/object.tt
package Paws::ManagedBlockchain::VotingPolicy;
  use Moo;
  use Types::Standard qw//;
  use Paws::ManagedBlockchain::Types qw/ManagedBlockchain_ApprovalThresholdPolicy/;
  has ApprovalThresholdPolicy => (is => 'ro', isa => ManagedBlockchain_ApprovalThresholdPolicy);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApprovalThresholdPolicy' => {
                                              'class' => 'Paws::ManagedBlockchain::ApprovalThresholdPolicy',
                                              'type' => 'ManagedBlockchain_ApprovalThresholdPolicy'
                                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::VotingPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::VotingPolicy object:

  $service_obj->Method(Att1 => { ApprovalThresholdPolicy => $value, ..., ApprovalThresholdPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::VotingPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->ApprovalThresholdPolicy

=head1 DESCRIPTION

The voting rules for the network to decide if a proposal is accepted

=head1 ATTRIBUTES


=head2 ApprovalThresholdPolicy => ManagedBlockchain_ApprovalThresholdPolicy

  Defines the rules for the network for voting on proposals, such as the
percentage of C<YES> votes required for the proposal to be approved and
the duration of the proposal. The policy applies to all proposals and
is specified when the network is created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

