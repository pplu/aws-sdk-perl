package Paws::ElasticBeanstalk::MaxCountRule;
  use Moose;
  has DeleteSourceFromS3 => (is => 'ro', isa => 'Bool');
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has MaxCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::MaxCountRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::MaxCountRule object:

  $service_obj->Method(Att1 => { DeleteSourceFromS3 => $value, ..., MaxCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::MaxCountRule object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteSourceFromS3

=head1 DESCRIPTION

A lifecycle rule that deletes the oldest application version when the
maximum count is exceeded.

=head1 ATTRIBUTES


=head2 DeleteSourceFromS3 => Bool

  Set to C<true> to delete a version's source bundle from Amazon S3 when
Elastic Beanstalk deletes the application version.


=head2 B<REQUIRED> Enabled => Bool

  Specify C<true> to apply the rule, or C<false> to disable it.


=head2 MaxCount => Int

  Specify the maximum number of application versions to retain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

