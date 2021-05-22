
package Paws::SSM::AssociateOpsItemRelatedItem;
  use Moose;
  has AssociationType => (is => 'ro', isa => 'Str', required => 1);
  has OpsItemId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has ResourceUri => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateOpsItemRelatedItem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::AssociateOpsItemRelatedItemResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AssociateOpsItemRelatedItem - Arguments for method AssociateOpsItemRelatedItem on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateOpsItemRelatedItem on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method AssociateOpsItemRelatedItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateOpsItemRelatedItem.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $AssociateOpsItemRelatedItemResponse = $ssm->AssociateOpsItemRelatedItem(
      AssociationType => 'MyOpsItemRelatedItemAssociationType',
      OpsItemId       => 'MyOpsItemId',
      ResourceType    => 'MyOpsItemRelatedItemAssociationResourceType',
      ResourceUri     => 'MyOpsItemRelatedItemAssociationResourceUri',

    );

    # Results:
    my $AssociationId = $AssociateOpsItemRelatedItemResponse->AssociationId;

    # Returns a L<Paws::SSM::AssociateOpsItemRelatedItemResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/AssociateOpsItemRelatedItem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationType => Str

The type of association that you want to create between an OpsItem and
a resource. OpsCenter supports C<IsParentOf> and C<RelatesTo>
association types.



=head2 B<REQUIRED> OpsItemId => Str

The ID of the OpsItem to which you want to associate a resource as a
related item.



=head2 B<REQUIRED> ResourceType => Str

The type of resource that you want to associate with an OpsItem.
OpsCenter supports the following types:

C<AWS::SSMIncidents::IncidentRecord>: an Incident Manager incident.
Incident Manager is a capability of AWS Systems Manager.

C<AWS::SSM::Document>: a Systems Manager (SSM) document.



=head2 B<REQUIRED> ResourceUri => Str

The Amazon Resource Name (ARN) of the AWS resource that you want to
associate with the OpsItem.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateOpsItemRelatedItem in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

