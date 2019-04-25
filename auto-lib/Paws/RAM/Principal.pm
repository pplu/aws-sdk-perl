package Paws::RAM::Principal;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has External => (is => 'ro', isa => 'Bool', request_name => 'external', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has ResourceShareArn => (is => 'ro', isa => 'Str', request_name => 'resourceShareArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::Principal

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RAM::Principal object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., ResourceShareArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RAM::Principal object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Describes a principal for use with AWS Resource Access Manager.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The time when the principal was associated with the resource share.


=head2 External => Bool

  Indicates whether the principal belongs to the same organization as the
AWS account that owns the resource share.


=head2 Id => Str

  The ID of the principal.


=head2 LastUpdatedTime => Str

  The time when the association was last updated.


=head2 ResourceShareArn => Str

  The Amazon Resource Name (ARN) of the resource share.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

