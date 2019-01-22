package Paws::CodeDeploy::OnPremisesTagSet;
  use Moose;
  has OnPremisesTagSetList => (is => 'ro', isa => 'ArrayRef[ArrayRef[Paws::CodeDeploy::TagFilter]]', request_name => 'onPremisesTagSetList', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::OnPremisesTagSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::OnPremisesTagSet object:

  $service_obj->Method(Att1 => { OnPremisesTagSetList => $value, ..., OnPremisesTagSetList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::OnPremisesTagSet object:

  $result = $service_obj->Method(...);
  $result->Att1->OnPremisesTagSetList

=head1 DESCRIPTION

Information about groups of on-premises instance tags.

=head1 ATTRIBUTES


=head2 OnPremisesTagSetList => ArrayRef[L<ArrayRef[Paws::CodeDeploy::TagFilter]>]

  A list that contains other lists of on-premises instance tag groups.
For an instance to be included in the deployment group, it must be
identified by all of the tag groups in the list.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

