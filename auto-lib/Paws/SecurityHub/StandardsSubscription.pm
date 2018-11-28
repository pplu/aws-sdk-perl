package Paws::SecurityHub::StandardsSubscription;
  use Moose;
  has StandardsArn => (is => 'ro', isa => 'Str', required => 1);
  has StandardsInput => (is => 'ro', isa => 'Paws::SecurityHub::StandardsInputParameterMap', required => 1);
  has StandardsStatus => (is => 'ro', isa => 'Str', required => 1);
  has StandardsSubscriptionArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::StandardsSubscription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::StandardsSubscription object:

  $service_obj->Method(Att1 => { StandardsArn => $value, ..., StandardsSubscriptionArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::StandardsSubscription object:

  $result = $service_obj->Method(...);
  $result->Att1->StandardsArn

=head1 DESCRIPTION

A resource that represents your subscription to a supported standard.

=head1 ATTRIBUTES


=head2 B<REQUIRED> StandardsArn => Str

  The ARN of a standard.


=head2 B<REQUIRED> StandardsInput => L<Paws::SecurityHub::StandardsInputParameterMap>

  


=head2 B<REQUIRED> StandardsStatus => Str

  The standard's status.


=head2 B<REQUIRED> StandardsSubscriptionArn => Str

  The ARN of a resource that represents your subscription to a supported
standard.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

