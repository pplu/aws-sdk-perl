# Generated from default/object.tt
package Paws::CloudWatchLogs::QueryCompileError;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_QueryCompileErrorLocation/;
  has Location => (is => 'ro', isa => CloudWatchLogs_QueryCompileErrorLocation);
  has Message => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Location' => {
                               'class' => 'Paws::CloudWatchLogs::QueryCompileErrorLocation',
                               'type' => 'CloudWatchLogs_QueryCompileErrorLocation'
                             },
               'Message' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Location' => 'location',
                       'Message' => 'message'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::QueryCompileError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::QueryCompileError object:

  $service_obj->Method(Att1 => { Location => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::QueryCompileError object:

  $result = $service_obj->Method(...);
  $result->Att1->Location

=head1 DESCRIPTION

Reserved.

=head1 ATTRIBUTES


=head2 Location => CloudWatchLogs_QueryCompileErrorLocation

  Reserved.


=head2 Message => Str

  Reserved.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

