package Paws::MQ::ConfigurationRevision;
  use Moose;
  has Created => (is => 'ro', isa => 'Str', request_name => 'created', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Revision => (is => 'ro', isa => 'Int', request_name => 'revision', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ConfigurationRevision

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::ConfigurationRevision object:

  $service_obj->Method(Att1 => { Created => $value, ..., Revision => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::ConfigurationRevision object:

  $result = $service_obj->Method(...);
  $result->Att1->Created

=head1 DESCRIPTION

Returns information about the specified configuration revision.

=head1 ATTRIBUTES


=head2 Created => Str

  Required. The date and time of the configuration revision.


=head2 Description => Str

  The description of the configuration revision.


=head2 Revision => Int

  Required. The revision number of the configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

