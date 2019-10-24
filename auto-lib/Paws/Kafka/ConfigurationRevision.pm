# Generated from default/object.tt
package Paws::Kafka::ConfigurationRevision;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Kafka::Types qw//;
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has Description => (is => 'ro', isa => Str);
  has Revision => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'Revision' => {
                               'type' => 'Int'
                             },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'CreationTime' => 'creationTime',
                       'Revision' => 'revision',
                       'Description' => 'description'
                     },
  'IsRequired' => {
                    'CreationTime' => 1,
                    'Revision' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ConfigurationRevision

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::ConfigurationRevision object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Revision => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::ConfigurationRevision object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Describes a configuration revision.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  The time when the configuration revision was created.


=head2 Description => Str

  The description of the configuration revision.


=head2 B<REQUIRED> Revision => Int

  The revision number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

