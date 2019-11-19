
package Paws::EC2::DeleteNetworkAclEntry;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::EC2::Types qw//;
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Egress => (is => 'ro', isa => Bool, required => 1, predicate => 1);
  has NetworkAclId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RuleNumber => (is => 'ro', isa => Int, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteNetworkAclEntry');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Egress' => 1,
                    'NetworkAclId' => 1,
                    'RuleNumber' => 1
                  },
  'NameInRequest' => {
                       'Egress' => 'egress',
                       'NetworkAclId' => 'networkAclId',
                       'RuleNumber' => 'ruleNumber',
                       'DryRun' => 'dryRun'
                     },
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'RuleNumber' => {
                                 'type' => 'Int'
                               },
               'NetworkAclId' => {
                                   'type' => 'Str'
                                 },
               'Egress' => {
                             'type' => 'Bool'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteNetworkAclEntry - Arguments for method DeleteNetworkAclEntry on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteNetworkAclEntry on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeleteNetworkAclEntry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteNetworkAclEntry.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To delete a network ACL entry
    # This example deletes ingress rule number 100 from the specified network
    # ACL.
    $ec2->DeleteNetworkAclEntry(
      'Egress'       => 1,
      'NetworkAclId' => 'acl-5fb85d36',
      'RuleNumber'   => 100
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeleteNetworkAclEntry>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> Egress => Bool

Indicates whether the rule is an egress rule.



=head2 B<REQUIRED> NetworkAclId => Str

The ID of the network ACL.



=head2 B<REQUIRED> RuleNumber => Int

The rule number of the entry to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteNetworkAclEntry in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

