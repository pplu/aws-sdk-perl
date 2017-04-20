
package Paws::IAM::CreateServiceLinkedRole;
  use Moose;
  has AWSServiceName => (is => 'ro', isa => 'Str', required => 1);
  has CustomSuffix => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServiceLinkedRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::CreateServiceLinkedRoleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateServiceLinkedRoleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateServiceLinkedRole - Arguments for method CreateServiceLinkedRole on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServiceLinkedRole on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method CreateServiceLinkedRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServiceLinkedRole.

As an example:

  $service_obj->CreateServiceLinkedRole(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AWSServiceName => Str

The AWS service to which this role is attached. You use a string
similar to a URL but without the http:// in front. For example:
C<elasticbeanstalk.amazonaws.com>



=head2 CustomSuffix => Str

A string that you provide, which is combined with the service name to
form the complete role name. If you make multiple requests for the same
service, then you must supply a different C<CustomSuffix> for each
request. Otherwise the request fails with a duplicate role name error.
For example, you could add C<-1> or C<-debug> to the suffix.



=head2 Description => Str

The description of the role.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServiceLinkedRole in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

