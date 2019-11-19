# Generated from default/object.tt
package Paws::CloudWatch::Range;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatch::Types qw//;
  has EndTime => (is => 'ro', isa => Str, required => 1);
  has StartTime => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'StartTime' => 1,
                    'EndTime' => 1
                  },
  'types' => {
               'StartTime' => {
                                'type' => 'Str'
                              },
               'EndTime' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::Range

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::Range object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::Range object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

Specifies one range of days or times to exclude from use for training
an anomaly detection model.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

  The end time of the range to exclude. The format is
C<yyyy-MM-dd'T'HH:mm:ss>. For example, C<2019-07-01T23:59:59>.


=head2 B<REQUIRED> StartTime => Str

  The start time of the range to exclude. The format is
C<yyyy-MM-dd'T'HH:mm:ss>. For example, C<2019-07-01T23:59:59>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

