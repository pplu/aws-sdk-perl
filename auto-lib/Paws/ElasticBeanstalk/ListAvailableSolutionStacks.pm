
package Paws::ElasticBeanstalk::ListAvailableSolutionStacks;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAvailableSolutionStacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ListAvailableSolutionStacksResultMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListAvailableSolutionStacksResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ListAvailableSolutionStacks - Arguments for method ListAvailableSolutionStacks on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAvailableSolutionStacks on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method ListAvailableSolutionStacks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAvailableSolutionStacks.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To view solution stacks
    # The following operation lists solution stacks for all currently available
    # platform configurations and any that you have used in the past:
    my $ListAvailableSolutionStacksResultMessage =
      $elasticbeanstalk->ListAvailableSolutionStacks();

    # Results:
    my $SolutionStackDetails =
      $ListAvailableSolutionStacksResultMessage->SolutionStackDetails;
    my $SolutionStacks =
      $ListAvailableSolutionStacksResultMessage->SolutionStacks;

# Returns a L<Paws::ElasticBeanstalk::ListAvailableSolutionStacksResultMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/ListAvailableSolutionStacks>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAvailableSolutionStacks in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

