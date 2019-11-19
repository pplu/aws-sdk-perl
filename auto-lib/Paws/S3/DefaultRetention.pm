package Paws::S3::DefaultRetention;
  use Moose;
  has Days => (is => 'ro', isa => 'Int');
  has Mode => (is => 'ro', isa => 'Str');
  has Years => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DefaultRetention

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::DefaultRetention object:

  $service_obj->Method(Att1 => { Days => $value, ..., Years => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::DefaultRetention object:

  $result = $service_obj->Method(...);
  $result->Att1->Days

=head1 DESCRIPTION

The container element for specifying the default Object Lock retention
settings for new objects placed in the specified bucket.

=head1 ATTRIBUTES


=head2 Days => Int

  The number of days that you want to specify for the default retention
period.


=head2 Mode => Str

  The default Object Lock retention mode you want to apply to new objects
placed in the specified bucket.


=head2 Years => Int

  The number of years that you want to specify for the default retention
period.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

