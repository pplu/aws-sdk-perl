# Generated from default/object.tt
package Paws::MQ::CreateConfigurationOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MQ::Types qw/MQ_ConfigurationRevision/;
  has Arn => (is => 'ro', isa => Str);
  has Created => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has LatestRevision => (is => 'ro', isa => MQ_ConfigurationRevision);
  has Name => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'Created' => {
                              'type' => 'Str'
                            },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'LatestRevision' => {
                                     'class' => 'Paws::MQ::ConfigurationRevision',
                                     'type' => 'MQ_ConfigurationRevision'
                                   }
             },
  'NameInRequest' => {
                       'Id' => 'id',
                       'Created' => 'created',
                       'Arn' => 'arn',
                       'Name' => 'name',
                       'LatestRevision' => 'latestRevision'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::CreateConfigurationOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::CreateConfigurationOutput object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::CreateConfigurationOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Returns information about the created configuration.

=head1 ATTRIBUTES


=head2 Arn => Str

  Required. The Amazon Resource Name (ARN) of the configuration.


=head2 Created => Str

  Required. The date and time of the configuration.


=head2 Id => Str

  Required. The unique ID that Amazon MQ generates for the configuration.


=head2 LatestRevision => MQ_ConfigurationRevision

  The latest revision of the configuration.


=head2 Name => Str

  Required. The name of the configuration. This value can contain only
alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~). This value must be 1-150 characters long.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

