package Paws::ES::SnapshotOptions;
  use Moose;
  has AutomatedSnapshotStartHour => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::SnapshotOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::SnapshotOptions object:

  $service_obj->Method(Att1 => { AutomatedSnapshotStartHour => $value, ..., AutomatedSnapshotStartHour => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::SnapshotOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AutomatedSnapshotStartHour

=head1 DESCRIPTION

Specifies the time, in UTC format, when the service takes a daily
automated snapshot of the specified Elasticsearch domain. Default value
is C<0> hours.

=head1 ATTRIBUTES


=head2 AutomatedSnapshotStartHour => Int

  Specifies the time, in UTC format, when the service takes a daily
automated snapshot of the specified Elasticsearch domain. Default value
is C<0> hours.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

