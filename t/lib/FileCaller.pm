#
# Caller to use a local file as a fake response from the API
#
# The local file must be a YAML file with a structure that will fake a 
# response from the API
#
# ---
# status: 200	# HTTP status code
# headers:		# Array of headers
#     - Host: aws.amazon.com
#     - x-amz-test: test header
# content: |	# Actual response body, you can obtain a sample using one of the TestMakerCallers
#     <XmlResponse>xml-driven API response</XmlResponse>
#     {
#         "or" : "json format",
#     }
# ---
#
# Whether you need to use XML or JSON in the content field depends on
# the expected format returned by the real API calls.
#
# The file name to be used as input can be specified either by:
# 	- reponse_file attribute at object creation time
# 	- environment variable PAWS_RESPONSE_FILE

package FileCaller;
  use Moose;
  use Carp qw(croak);
  use YAML qw/LoadFile/;

  with 'Paws::Net::CallerRole';
  use Paws::Net::APIResponse;

  has response_file => ( is => 'rw', default => sub { $ENV{'PAWS_RESPONSE_FILE'} } );
  has debug => ( is => 'rw', default => 0 );

  sub do_call {
    my ($self, $service, $call_object) = @_;

    my $response = $self->_file_response;

    if (ref($response->{headers}) eq 'ARRAY') { $response->{headers} = {} }

    my $res = Paws::Net::APIResponse->new(
      status  => $response->{status},
      content => $response->{content},
      headers => $response->{headers}
    );

    return $service->response_to_object->process($call_object, $res);
  }

  # Return a fake HTTP-like response cooked in a YAML file
  sub _file_response {
    my ($self) = @_;

    my $res = LoadFile($self->response_file);
    if ($self->debug) {
      print STDERR "Loading from file " . $self->response_file . "\n";
      use Data::Dumper;
      print Dumper($res);
    }

    return $res;
  }

  no Moose;
1;
