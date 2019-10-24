# Generated from default/object.tt
package Paws::KinesisAnalytics::InputConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_InputStartingPositionConfiguration/;
  has Id => (is => 'ro', isa => Str, required => 1);
  has InputStartingPositionConfiguration => (is => 'ro', isa => KinesisAnalytics_InputStartingPositionConfiguration, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InputStartingPositionConfiguration' => {
                                                         'class' => 'Paws::KinesisAnalytics::InputStartingPositionConfiguration',
                                                         'type' => 'KinesisAnalytics_InputStartingPositionConfiguration'
                                                       },
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'IsRequired' => {
                    'InputStartingPositionConfiguration' => 1,
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::InputConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::InputConfiguration object:

  $service_obj->Method(Att1 => { Id => $value, ..., InputStartingPositionConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::InputConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

When you start your application, you provide this configuration, which
identifies the input source and the point in the input source at which
you want the application to start processing records.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  Input source ID. You can get this ID by calling the DescribeApplication
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html)
operation.


=head2 B<REQUIRED> InputStartingPositionConfiguration => KinesisAnalytics_InputStartingPositionConfiguration

  Point at which you want the application to start processing records
from the streaming source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

