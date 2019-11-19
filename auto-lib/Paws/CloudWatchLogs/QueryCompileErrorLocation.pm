# Generated from default/object.tt
package Paws::CloudWatchLogs::QueryCompileErrorLocation;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::CloudWatchLogs::Types qw//;
  has EndCharOffset => (is => 'ro', isa => Int);
  has StartCharOffset => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'StartCharOffset' => 'startCharOffset',
                       'EndCharOffset' => 'endCharOffset'
                     },
  'types' => {
               'StartCharOffset' => {
                                      'type' => 'Int'
                                    },
               'EndCharOffset' => {
                                    'type' => 'Int'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::QueryCompileErrorLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::QueryCompileErrorLocation object:

  $service_obj->Method(Att1 => { EndCharOffset => $value, ..., StartCharOffset => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::QueryCompileErrorLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->EndCharOffset

=head1 DESCRIPTION

Reserved.

=head1 ATTRIBUTES


=head2 EndCharOffset => Int

  Reserved.


=head2 StartCharOffset => Int

  Reserved.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

