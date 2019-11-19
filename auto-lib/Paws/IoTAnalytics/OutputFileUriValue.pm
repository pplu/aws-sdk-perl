# Generated from default/object.tt
package Paws::IoTAnalytics::OutputFileUriValue;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw//;
  has FileName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FileName' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'FileName' => 'fileName'
                     },
  'IsRequired' => {
                    'FileName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::OutputFileUriValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::OutputFileUriValue object:

  $service_obj->Method(Att1 => { FileName => $value, ..., FileName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::OutputFileUriValue object:

  $result = $service_obj->Method(...);
  $result->Att1->FileName

=head1 DESCRIPTION

The value of the variable as a structure that specifies an output file
URI.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileName => Str

  The URI of the location where data set contents are stored, usually the
URI of a file in an S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

