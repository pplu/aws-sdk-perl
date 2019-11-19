# Generated from default/object.tt
package Paws::IoT::LogTargetConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_LogTarget/;
  has LogLevel => (is => 'ro', isa => Str);
  has LogTarget => (is => 'ro', isa => IoT_LogTarget);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LogLevel' => {
                               'type' => 'Str'
                             },
               'LogTarget' => {
                                'type' => 'IoT_LogTarget',
                                'class' => 'Paws::IoT::LogTarget'
                              }
             },
  'NameInRequest' => {
                       'LogTarget' => 'logTarget',
                       'LogLevel' => 'logLevel'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::LogTargetConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::LogTargetConfiguration object:

  $service_obj->Method(Att1 => { LogLevel => $value, ..., LogTarget => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::LogTargetConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->LogLevel

=head1 DESCRIPTION

The target configuration.

=head1 ATTRIBUTES


=head2 LogLevel => Str

  The logging level.


=head2 LogTarget => IoT_LogTarget

  A log target



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

