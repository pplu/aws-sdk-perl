package Paws::RAM::ResourceShare;
  use Moose;
  has AllowExternalPrincipals => (is => 'ro', isa => 'Bool', request_name => 'allowExternalPrincipals', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has OwningAccountId => (is => 'ro', isa => 'Str', request_name => 'owningAccountId', traits => ['NameInRequest']);
  has ResourceShareArn => (is => 'ro', isa => 'Str', request_name => 'resourceShareArn', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RAM::Tag]', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ResourceShare

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RAM::ResourceShare object:

  $service_obj->Method(Att1 => { AllowExternalPrincipals => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RAM::ResourceShare object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowExternalPrincipals

=head1 DESCRIPTION

Describes a resource share.

=head1 ATTRIBUTES


=head2 AllowExternalPrincipals => Bool

  Indicates whether principals outside your organization can be
associated with a resource share.


=head2 CreationTime => Str

  The time when the resource share was created.


=head2 LastUpdatedTime => Str

  The time when the resource share was last updated.


=head2 Name => Str

  The name of the resource share.


=head2 OwningAccountId => Str

  The ID of the AWS account that owns the resource share.


=head2 ResourceShareArn => Str

  The Amazon Resource Name (ARN) of the resource share.


=head2 Status => Str

  The status of the resource share.


=head2 StatusMessage => Str

  A message about the status of the resource share.


=head2 Tags => ArrayRef[L<Paws::RAM::Tag>]

  The tags for the resource share.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

