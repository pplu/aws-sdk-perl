# Generated from default/object.tt
package Paws::MQ::BrokerEngineType;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MQ::Types qw/MQ_EngineVersion/;
  has EngineType => (is => 'ro', isa => Str);
  has EngineVersions => (is => 'ro', isa => ArrayRef[MQ_EngineVersion]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EngineVersions' => {
                                     'class' => 'Paws::MQ::EngineVersion',
                                     'type' => 'ArrayRef[MQ_EngineVersion]'
                                   },
               'EngineType' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'EngineVersions' => 'engineVersions',
                       'EngineType' => 'engineType'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::BrokerEngineType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::BrokerEngineType object:

  $service_obj->Method(Att1 => { EngineType => $value, ..., EngineVersions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::BrokerEngineType object:

  $result = $service_obj->Method(...);
  $result->Att1->EngineType

=head1 DESCRIPTION

Types of broker engines.

=head1 ATTRIBUTES


=head2 EngineType => Str

  The type of broker engine.


=head2 EngineVersions => ArrayRef[MQ_EngineVersion]

  The list of engine versions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

