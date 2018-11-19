package Paws::RAM::Resource;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has ResourceShareArn => (is => 'ro', isa => 'Str', request_name => 'resourceShareArn', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::Resource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RAM::Resource object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RAM::Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes a resource associated with a resource share.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the resource.


=head2 CreationTime => Str

  The time when the resource was associated with the resource share.


=head2 LastUpdatedTime => Str

  The time when the association was last updated.


=head2 ResourceShareArn => Str

  The Amazon Resource Name (ARN) of the resource share.


=head2 Status => Str

  The status of the resource.


=head2 StatusMessage => Str

  A message about the status of the resource.


=head2 Type => Str

  The resource type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

