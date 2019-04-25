package Paws::RAM::ResourceShareAssociation;
  use Moose;
  has AssociatedEntity => (is => 'ro', isa => 'Str', request_name => 'associatedEntity', traits => ['NameInRequest']);
  has AssociationType => (is => 'ro', isa => 'Str', request_name => 'associationType', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has External => (is => 'ro', isa => 'Bool', request_name => 'external', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has ResourceShareArn => (is => 'ro', isa => 'Str', request_name => 'resourceShareArn', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ResourceShareAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RAM::ResourceShareAssociation object:

  $service_obj->Method(Att1 => { AssociatedEntity => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RAM::ResourceShareAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatedEntity

=head1 DESCRIPTION

Describes an association with a resource share.

=head1 ATTRIBUTES


=head2 AssociatedEntity => Str

  The associated entity. For resource associations, this is the ARN of
the resource. For principal associations, this is the ID of an AWS
account or the ARN of an OU or organization from AWS Organizations.


=head2 AssociationType => Str

  The association type.


=head2 CreationTime => Str

  The time when the association was created.


=head2 External => Bool

  Indicates whether the principal belongs to the same organization as the
AWS account that owns the resource share.


=head2 LastUpdatedTime => Str

  The time when the association was last updated.


=head2 ResourceShareArn => Str

  The Amazon Resource Name (ARN) of the resource share.


=head2 Status => Str

  The status of the association.


=head2 StatusMessage => Str

  A message about the status of the association.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

